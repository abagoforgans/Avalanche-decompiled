contract main {




// =====================  Runtime code  =====================


#
#  - getTokenPairs(address arg1)
#  - getLocks(address arg1)
#
const getBlock = block.number

const thisAddress = address(this.address)


mapping of uint256 stor0;
array of struct sub_25dbd379;
mapping of uint256 stor2;
array of struct sub_150d0aa9;
mapping of struct stor4;
mapping of struct stor5;
address stor6;
address stor7;

function getWidgetCount() {
    return sub_25dbd379.length
}

function sub_150d0aa9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_150d0aa9.length:
        revert with 'NH{q', 50
    return sub_150d0aa9[arg1].field_0
}

function sub_25dbd379(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_25dbd379.length:
        revert with 'NH{q', 50
    return sub_25dbd379[arg1].field_0
}

function sub_de3794c4(?) {
    return sub_150d0aa9.length
}

function _fallback() payable {
    revert
}

function sub_5cbf9d53(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_d84da30d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if sub_150d0aa9.length < 1:
        revert with 'NH{q', 17
    if sub_150d0aa9.length - 1 >= sub_150d0aa9.length:
        revert with 'NH{q', 50
    stor2[stor3[stor3.length].field_0] = stor2[address(arg1)]
    if stor2[address(arg1)] >= sub_150d0aa9.length:
        revert with 'NH{q', 50
    sub_150d0aa9[stor2[address(arg1)]].field_0 = sub_150d0aa9[sub_150d0aa9.length].field_0
    stor2[address(arg1)] = 0
    if not sub_150d0aa9.length:
        revert with 'NH{q', 49
    sub_150d0aa9[sub_150d0aa9.length].field_0 = 0
    sub_150d0aa9.length--
    if stor5[address(arg1)].field_0:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        stor5[address(arg1)].field_0 = 0
        if 31 < stor5[address(arg1)].field_1:
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        stor5[address(arg1)].field_0 = 0
        if 31 < stor5[address(arg1)].field_1:
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function remWidget(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if sub_25dbd379.length < 1:
        revert with 'NH{q', 17
    if sub_25dbd379.length - 1 >= sub_25dbd379.length:
        revert with 'NH{q', 50
    stor0[stor1[stor1.length].field_0] = stor0[address(arg1)]
    if stor0[address(arg1)] >= sub_25dbd379.length:
        revert with 'NH{q', 50
    sub_25dbd379[stor0[address(arg1)]].field_0 = sub_25dbd379[sub_25dbd379.length].field_0
    stor0[address(arg1)] = 0
    if not sub_25dbd379.length:
        revert with 'NH{q', 49
    sub_25dbd379[sub_25dbd379.length].field_0 = 0
    sub_25dbd379.length--
    if stor4[address(arg1)].field_0:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        stor4[address(arg1)].field_0 = 0
        if 31 < stor4[address(arg1)].field_1:
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        stor4[address(arg1)].field_0 = 0
        if 31 < stor4[address(arg1)].field_1:
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor4[address(arg1)].field_256 = 0
}

function sub_24baa9ea(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0, 'Only owner can call this function.'
    if not sub_150d0aa9.length:
        revert with 0, 'Can't update a widget that doesn't exist.'
    if stor2[address(arg1)] >= sub_150d0aa9.length:
        revert with 'NH{q', 50
    if sub_150d0aa9[stor2[address(arg1)]].field_0 != address(arg1):
        revert with 0, 'Can't update a widget that doesn't exist.'
    if stor5[address(arg1)].field_0:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor5[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[address(arg1)].field_0 = 0
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor5[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[address(arg1)].field_0 = 0
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d4bf537c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0, 'Only owner can call this function.'
    if not sub_25dbd379.length:
        revert with 0, 'Can't update a widget that doesn't exist.'
    if stor0[address(arg1)] >= sub_25dbd379.length:
        revert with 'NH{q', 50
    if sub_25dbd379[stor0[address(arg1)]].field_0 != address(arg1):
        revert with 0, 'Can't update a widget that doesn't exist.'
    if stor4[address(arg1)].field_0:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor4[address(arg1)].field_256 = address(arg3)
}

function sub_dd39728b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0, 'Only owner can call this function.'
    if sub_150d0aa9.length:
        if stor2[address(arg1)] >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        if sub_150d0aa9[stor2[address(arg1)]].field_0 == address(arg1):
            revert with 0, 'You have active burn. Only one burn can be done.'
    sub_150d0aa9.length++
    sub_150d0aa9[sub_150d0aa9.length].field_0 = address(arg1)
    if sub_150d0aa9.length < 1:
        revert with 'NH{q', 17
    stor2[address(arg1)] = sub_150d0aa9.length - 1
    if stor5[address(arg1)].field_0:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor5[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[address(arg1)].field_0 = 0
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor5[address(arg1)].field_0 - (stor5[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor5[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[address(arg1)].field_0 = 0
            idx = 0
            while stor5[address(arg1)].field_1 + 31 / 32 > idx:
                stor5[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_525091fa(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if stor6 != msg.sender:
        if stor7 != msg.sender:
            revert with 0, 'Only owner can call this function.'
    if sub_25dbd379.length:
        if stor0[address(arg1)] >= sub_25dbd379.length:
            revert with 'NH{q', 50
        if sub_25dbd379[stor0[address(arg1)]].field_0 == address(arg1):
            revert with 0, 'You have active burn. Only one burn can be done.'
    sub_25dbd379.length++
    sub_25dbd379[sub_25dbd379.length].field_0 = address(arg1)
    if sub_25dbd379.length < 1:
        revert with 'NH{q', 17
    stor0[address(arg1)] = sub_25dbd379.length - 1
    if stor4[address(arg1)].field_0:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if arg2.length:
            stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[address(arg1)].field_0 = 0
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor4[address(arg1)].field_256 = address(arg3)
}

function getWidget(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_25dbd379.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't get a widget that doesn't exist.'
    if stor0[address(arg1)] >= sub_25dbd379.length:
        revert with 'NH{q', 50
    if sub_25dbd379[stor0[address(arg1)]].field_0 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't get a widget that doesn't exist.'
    if stor4[address(arg1)].field_0:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if stor4[address(arg1)].field_0:
            if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
                revert with 'NH{q', 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
                revert with 'NH{q', 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor4[address(arg1)].field_1), data=mem[128 len ceil32(stor4[address(arg1)].field_1)]), 
               stor4[address(arg1)].field_256
    if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
        revert with 'NH{q', 34
    if stor4[address(arg1)].field_0:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if stor4[address(arg1)].field_1:
            if 31 >= stor4[address(arg1)].field_1:
                mem[128] = 256 * stor4[address(arg1)].field_8
            else:
                mem[128] = stor4[address(arg1)].field_0
                idx = 128
                s = 0
                while stor4[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor4[address(arg1)].field_0 - (stor4[address(arg1)].field_1 < 32):
            revert with 'NH{q', 34
        if stor4[address(arg1)].field_1:
            if 31 >= stor4[address(arg1)].field_1:
                mem[128] = 256 * stor4[address(arg1)].field_8
            else:
                mem[128] = stor4[address(arg1)].field_0
                idx = 128
                s = 0
                while stor4[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor4[address(arg1)].field_0, data=mem[128 len ceil32(stor4[address(arg1)].field_1)]), 
           stor4[address(arg1)].field_256
}

function getLockList() {
    if sub_150d0aa9.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_150d0aa9.length
    mem[64] = (32 * sub_150d0aa9.length) + 128
    if not sub_150d0aa9.length:
        if var35002 >= sub_150d0aa9.length:
            mem[(32 * sub_150d0aa9.length) + 128] = 32
            mem[(32 * sub_150d0aa9.length) + 160] = sub_150d0aa9.length
            idx = 0
            s = 128
            t = (32 * sub_150d0aa9.length) + 192
            while idx < sub_150d0aa9.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * sub_150d0aa9.length) + 128
               len (96 * sub_150d0aa9.length) + 64
        if var41001 >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if var47002 >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        mem[(32 * var47002) + 128] = address(var47001)
        s = var47002
        t = var47001
        idx = var47002
        while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if idx + 1 >= sub_150d0aa9.length:
                mem[(32 * sub_150d0aa9.length) + 128] = 32
                mem[(32 * sub_150d0aa9.length) + 160] = sub_150d0aa9.length
                idx = 0
                u = 128
                v = (32 * sub_150d0aa9.length) + 192
                while idx < sub_150d0aa9.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * sub_150d0aa9.length) + 128
                   len (96 * sub_150d0aa9.length) + 64
            mem[0] = 3
            if idx + 1 >= sub_150d0aa9.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = sub_150d0aa9[idx].field_512
            s = idx + 1
            t = sub_150d0aa9[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_150d0aa9.length] = call.data[calldata.size len 32 * sub_150d0aa9.length]
        if var36002 >= sub_150d0aa9.length:
            mem[(32 * sub_150d0aa9.length) + 128] = 32
            mem[(32 * sub_150d0aa9.length) + 160] = sub_150d0aa9.length
            idx = 0
            s = 128
            t = (32 * sub_150d0aa9.length) + 192
            while idx < sub_150d0aa9.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * sub_150d0aa9.length) + 128
               len (96 * sub_150d0aa9.length) + 64
        if var42001 >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if var48002 >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        mem[(32 * var48002) + 128] = address(var48001)
        s = var48002
        t = var48001
        idx = var48002
        while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if idx + 1 >= sub_150d0aa9.length:
                mem[(32 * sub_150d0aa9.length) + 128] = 32
                mem[(32 * sub_150d0aa9.length) + 160] = sub_150d0aa9.length
                idx = 0
                u = 128
                v = (32 * sub_150d0aa9.length) + 192
                while idx < sub_150d0aa9.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * sub_150d0aa9.length) + 128
                   len (96 * sub_150d0aa9.length) + 64
            mem[0] = 3
            if idx + 1 >= sub_150d0aa9.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = sub_150d0aa9[idx].field_512
            s = idx + 1
            t = sub_150d0aa9[idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function sub_80f4a1ae(?) {
    if sub_25dbd379.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_25dbd379.length
    mem[64] = (32 * sub_25dbd379.length) + 128
    if not sub_25dbd379.length:
        if var35002 >= sub_25dbd379.length:
            mem[(32 * sub_25dbd379.length) + 128] = 32
            mem[(32 * sub_25dbd379.length) + 160] = sub_25dbd379.length
            idx = 0
            s = 128
            t = (32 * sub_25dbd379.length) + 192
            while idx < sub_25dbd379.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * sub_25dbd379.length) + 128
               len (96 * sub_25dbd379.length) + 64
        if var41001 >= sub_25dbd379.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if var47002 >= sub_25dbd379.length:
            revert with 'NH{q', 50
        mem[(32 * var47002) + 128] = address(var47001)
        s = var47002
        t = var47001
        idx = var47002
        while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if idx + 1 >= sub_25dbd379.length:
                mem[(32 * sub_25dbd379.length) + 128] = 32
                mem[(32 * sub_25dbd379.length) + 160] = sub_25dbd379.length
                idx = 0
                u = 128
                v = (32 * sub_25dbd379.length) + 192
                while idx < sub_25dbd379.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * sub_25dbd379.length) + 128
                   len (96 * sub_25dbd379.length) + 64
            mem[0] = 1
            if idx + 1 >= sub_25dbd379.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = sub_25dbd379[idx].field_512
            s = idx + 1
            t = sub_25dbd379[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_25dbd379.length] = call.data[calldata.size len 32 * sub_25dbd379.length]
        if var36002 >= sub_25dbd379.length:
            mem[(32 * sub_25dbd379.length) + 128] = 32
            mem[(32 * sub_25dbd379.length) + 160] = sub_25dbd379.length
            idx = 0
            s = 128
            t = (32 * sub_25dbd379.length) + 192
            while idx < sub_25dbd379.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * sub_25dbd379.length) + 128
               len (96 * sub_25dbd379.length) + 64
        if var42001 >= sub_25dbd379.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if var48002 >= sub_25dbd379.length:
            revert with 'NH{q', 50
        mem[(32 * var48002) + 128] = address(var48001)
        s = var48002
        t = var48001
        idx = var48002
        while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if idx + 1 >= sub_25dbd379.length:
                mem[(32 * sub_25dbd379.length) + 128] = 32
                mem[(32 * sub_25dbd379.length) + 160] = sub_25dbd379.length
                idx = 0
                u = 128
                v = (32 * sub_25dbd379.length) + 192
                while idx < sub_25dbd379.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * sub_25dbd379.length) + 128
                   len (96 * sub_25dbd379.length) + 64
            mem[0] = 1
            if idx + 1 >= sub_25dbd379.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = sub_25dbd379[idx].field_512
            s = idx + 1
            t = sub_25dbd379[idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function sub_4fe894be(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _43 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < return_data.size + 192
    _44 = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require _43 + (32 * _44) + 32 <= return_data.size
    idx = _43 + 224
    s = ceil32(return_data.size) + 224
    while idx < _43 + (32 * _44) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _44:
        revert with 'NH{q', 50
    _80 = mem[ceil32(return_data.size) + 256]
    if block.timestamp > -21:
        revert with 'NH{q', 17
    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp + 20
    require ext_code.size(address(arg1))
    call address(arg1).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 20, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    _119 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_119]:
        revert with 'NH{q', 50
    mem[_119 + 32] = address(arg3)
    if 1 >= mem[_119]:
        revert with 'NH{q', 50
    mem[_119 + 64] = address(arg2)
    mem[_119 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_119 + 100] = _118
    mem[_119 + 132] = 64
    mem[_119 + 164] = mem[_119]
    idx = 0
    s = _119 + 32
    t = _119 + 196
    while idx < mem[_119]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg1).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _119 + (32 * mem[_119]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _146 = mem[_145]
    require mem[_145] <= test266151307()
    require _145 + mem[_145] + 31 < _145 + return_data.size
    _147 = mem[_145 + mem[_145]]
    if mem[_145 + mem[_145]] > test266151307():
        revert with 'NH{q', 65
    if _145 + ceil32(return_data.size) + floor32(mem[_145 + mem[_145]]) + 1 > test266151307() or floor32(mem[_145 + mem[_145]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _145 + ceil32(return_data.size) + floor32(mem[_145 + mem[_145]]) + 1
    mem[_145 + ceil32(return_data.size)] = _147
    require _146 + (32 * _147) + 32 <= return_data.size
    idx = _145 + _146 + 32
    s = _145 + ceil32(return_data.size) + 32
    while idx < _145 + _146 + (32 * _147) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _147:
        revert with 'NH{q', 50
    _164 = mem[_145 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = -1
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _167 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_167] == bool(mem[_167])
    if block.timestamp > -21:
        revert with 'NH{q', 17
    _169 = mem[64]
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _118
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _170 = mem[_119]
    mem[mem[64] + 164] = mem[_119]
    idx = 0
    s = _119 + 32
    t = mem[64] + 196
    while idx < _170:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_169 + 100] = this.address
    mem[_169 + 132] = block.timestamp + 20
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _169 + (32 * _170) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return _80, _118, _164, eth.balance(this.address)
}

function getTokenDetails(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _173 = mem[_169]
        require mem[_169] == mem[_169 + 31 len 1]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_177]
        require mem[_177] <= test266151307()
        require _177 + mem[_177] + 31 < _177 + return_data.size
        _183 = mem[_177 + mem[_177]]
        if mem[_177 + mem[_177]] > test266151307():
            revert with 'NH{q', 65
        if _177 + ceil32(return_data.size) + ceil32(ceil32(mem[_177 + mem[_177]])) + 1 > test266151307() or ceil32(ceil32(mem[_177 + mem[_177]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _177 + ceil32(return_data.size) + ceil32(ceil32(mem[_177 + mem[_177]])) + 1
        mem[_177 + ceil32(return_data.size)] = _183
        require _181 + _183 + 32 <= return_data.size
        mem[_177 + ceil32(return_data.size) + 32 len ceil32(_183)] = mem[_177 + _181 + 32 len ceil32(_183)]
        if ceil32(_183) <= _183:
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _339 = mem[_331]
            require mem[_331] == mem[_331]
            mem[mem[64] + 4] = 57005
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args 57005
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _355 = mem[_349]
            require mem[_349] == mem[_349]
            staticcall arg1.0x8da5cb5b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                _371 = mem[64]
                mem[mem[64]] = 192
                mem[mem[64] + 192] = _5
                mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                if ceil32(_5) > _5:
                    mem[mem[64] + _5 + 224] = 0
                mem[mem[64] + 32] = ceil32(_5) + 224
                mem[mem[64] + ceil32(_5) + 224] = _183
                mem[mem[64] + ceil32(_5) + 256 len ceil32(_183)] = mem[_177 + ceil32(return_data.size) + 32 len ceil32(_183)]
                if ceil32(_183) <= _183:
                    mem[mem[64] + 64] = uint8(_173)
                    mem[mem[64] + 96] = _339
                    return 192, ceil32(_5) + 224, _173 << 248, _339, _355, 0, _5, mem[mem[64] + 224 len ceil32(_5) + ceil32(_183) + 32]
                mem[mem[64] + ceil32(_5) + _183 + 256] = 0
                mem[mem[64] + 64] = uint8(_173)
                mem[_371 + 96] = _339
                mem[_371 + 128] = _355
                mem[_371 + 160] = 0
                return memory
                  from mem[64]
                   len _371 + ceil32(_5) + ceil32(_183) + -mem[64] + 256
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _372 = mem[_363]
            require mem[_363] == mem[_363 + 12 len 20]
            _387 = mem[64]
            mem[mem[64]] = 192
            mem[mem[64] + 192] = _5
            mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[mem[64] + _5 + 224] = 0
            mem[mem[64] + 32] = ceil32(_5) + 224
            mem[mem[64] + ceil32(_5) + 224] = _183
            mem[mem[64] + ceil32(_5) + 256 len ceil32(_183)] = mem[_177 + ceil32(return_data.size) + 32 len ceil32(_183)]
            if ceil32(_183) <= _183:
                mem[mem[64] + 64] = uint8(_173)
                mem[mem[64] + 96] = _339
                return Array(len=_5, data=mem[mem[64] + 224 len ceil32(_5) + ceil32(_183) + 32]), 
                       ceil32(_5) + 224,
                       _173 << 248,
                       _339,
                       _355,
                       address(_372)
            mem[mem[64] + ceil32(_5) + _183 + 256] = 0
            mem[mem[64] + 64] = uint8(_173)
            mem[_387 + 96] = _339
            mem[_387 + 128] = _355
            mem[_387 + 160] = address(_372)
            return memory
              from mem[64]
               len _387 + ceil32(_5) + ceil32(_183) + -mem[64] + 256
        mem[_177 + ceil32(return_data.size) + _183 + 32] = 0
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_337]
        require mem[_337] == mem[_337]
        mem[mem[64] + 4] = 57005
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args 57005
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _357 = mem[_353]
        require mem[_353] == mem[_353]
        staticcall arg1.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _375 = mem[64]
            mem[mem[64]] = 192
            mem[mem[64] + 192] = _5
            mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[mem[64] + _5 + 224] = 0
            mem[mem[64] + 32] = ceil32(_5) + 224
            mem[mem[64] + ceil32(_5) + 224] = _183
            mem[mem[64] + ceil32(_5) + 256 len ceil32(_183)] = mem[_177 + ceil32(return_data.size) + 32 len ceil32(_183)]
            if ceil32(_183) <= _183:
                mem[mem[64] + 64] = uint8(_173)
                mem[mem[64] + 96] = _341
                return 192, ceil32(_5) + 224, _173 << 248, _341, _357, 0, _5, mem[mem[64] + 224 len ceil32(_5) + ceil32(_183) + 32]
            mem[mem[64] + ceil32(_5) + _183 + 256] = 0
            mem[mem[64] + 64] = uint8(_173)
            mem[_375 + 96] = _341
            mem[_375 + 128] = _357
            mem[_375 + 160] = 0
            return memory
              from mem[64]
               len _375 + ceil32(_5) + ceil32(_183) + -mem[64] + 256
        _369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_369]
        require mem[_369] == mem[_369 + 12 len 20]
        _389 = mem[64]
        mem[mem[64]] = 192
        mem[mem[64] + 192] = _5
        mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 224] = 0
        mem[mem[64] + 32] = ceil32(_5) + 224
        mem[mem[64] + ceil32(_5) + 224] = _183
        mem[mem[64] + ceil32(_5) + 256 len ceil32(_183)] = mem[_177 + ceil32(return_data.size) + 32 len ceil32(_183)]
        if ceil32(_183) <= _183:
            mem[mem[64] + 64] = uint8(_173)
            mem[mem[64] + 96] = _341
            return Array(len=_5, data=mem[mem[64] + 224 len ceil32(_5) + ceil32(_183) + 32]), 
                   ceil32(_5) + 224,
                   _173 << 248,
                   _341,
                   _357,
                   address(_376)
        mem[mem[64] + ceil32(_5) + _183 + 256] = 0
        mem[mem[64] + 64] = uint8(_173)
        mem[_389 + 96] = _341
        mem[_389 + 128] = _357
        mem[_389 + 160] = address(_376)
        return memory
          from mem[64]
           len _389 + ceil32(_5) + ceil32(_183) + -mem[64] + 256
    mem[ceil32(return_data.size) + _5 + 128] = 0
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _172 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _174 = mem[_172]
    require mem[_172] == mem[_172 + 31 len 1]
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _180 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _182 = mem[_180]
    require mem[_180] <= test266151307()
    require _180 + mem[_180] + 31 < _180 + return_data.size
    _184 = mem[_180 + mem[_180]]
    if mem[_180 + mem[_180]] > test266151307():
        revert with 'NH{q', 65
    if _180 + ceil32(return_data.size) + ceil32(ceil32(mem[_180 + mem[_180]])) + 1 > test266151307() or ceil32(ceil32(mem[_180 + mem[_180]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _180 + ceil32(return_data.size) + ceil32(ceil32(mem[_180 + mem[_180]])) + 1
    mem[_180 + ceil32(return_data.size)] = _184
    require _182 + _184 + 32 <= return_data.size
    mem[_180 + ceil32(return_data.size) + 32 len ceil32(_184)] = mem[_180 + _182 + 32 len ceil32(_184)]
    if ceil32(_184) <= _184:
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _340 = mem[_334]
        require mem[_334] == mem[_334]
        mem[mem[64] + 4] = 57005
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args 57005
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _356 = mem[_351]
        require mem[_351] == mem[_351]
        staticcall arg1.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _373 = mem[64]
            mem[mem[64]] = 192
            mem[mem[64] + 192] = _5
            mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[mem[64] + _5 + 224] = 0
            mem[mem[64] + 32] = ceil32(_5) + 224
            mem[mem[64] + ceil32(_5) + 224] = _184
            mem[mem[64] + ceil32(_5) + 256 len ceil32(_184)] = mem[_180 + ceil32(return_data.size) + 32 len ceil32(_184)]
            if ceil32(_184) <= _184:
                mem[mem[64] + 64] = uint8(_174)
                mem[mem[64] + 96] = _340
                return 192, ceil32(_5) + 224, _174 << 248, _340, _356, 0, _5, mem[mem[64] + 224 len ceil32(_5) + ceil32(_184) + 32]
            mem[mem[64] + ceil32(_5) + _184 + 256] = 0
            mem[mem[64] + 64] = uint8(_174)
            mem[_373 + 96] = _340
            mem[_373 + 128] = _356
            mem[_373 + 160] = 0
            return memory
              from mem[64]
               len _373 + ceil32(_5) + ceil32(_184) + -mem[64] + 256
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _374 = mem[_366]
        require mem[_366] == mem[_366 + 12 len 20]
        _388 = mem[64]
        mem[mem[64]] = 192
        mem[mem[64] + 192] = _5
        mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 224] = 0
        mem[mem[64] + 32] = ceil32(_5) + 224
        mem[mem[64] + ceil32(_5) + 224] = _184
        mem[mem[64] + ceil32(_5) + 256 len ceil32(_184)] = mem[_180 + ceil32(return_data.size) + 32 len ceil32(_184)]
        if ceil32(_184) <= _184:
            mem[mem[64] + 64] = uint8(_174)
            mem[mem[64] + 96] = _340
            return Array(len=_5, data=mem[mem[64] + 224 len ceil32(_5) + ceil32(_184) + 32]), 
                   ceil32(_5) + 224,
                   _174 << 248,
                   _340,
                   _356,
                   address(_374)
        mem[mem[64] + ceil32(_5) + _184 + 256] = 0
        mem[mem[64] + 64] = uint8(_174)
        mem[_388 + 96] = _340
        mem[_388 + 128] = _356
        mem[_388 + 160] = address(_374)
        return memory
          from mem[64]
           len _388 + ceil32(_5) + ceil32(_184) + -mem[64] + 256
    mem[_180 + ceil32(return_data.size) + _184 + 32] = 0
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _338 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _342 = mem[_338]
    require mem[_338] == mem[_338]
    mem[mem[64] + 4] = 57005
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 57005
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _354 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _358 = mem[_354]
    require mem[_354] == mem[_354]
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        _377 = mem[64]
        mem[mem[64]] = 192
        mem[mem[64] + 192] = _5
        mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 224] = 0
        mem[mem[64] + 32] = ceil32(_5) + 224
        mem[mem[64] + ceil32(_5) + 224] = _184
        mem[mem[64] + ceil32(_5) + 256 len ceil32(_184)] = mem[_180 + ceil32(return_data.size) + 32 len ceil32(_184)]
        if ceil32(_184) <= _184:
            mem[mem[64] + 64] = uint8(_174)
            mem[mem[64] + 96] = _342
            return 192, ceil32(_5) + 224, _174 << 248, _342, _358, 0, _5, mem[mem[64] + 224 len ceil32(_5) + ceil32(_184) + 32]
        mem[mem[64] + ceil32(_5) + _184 + 256] = 0
        mem[mem[64] + 64] = uint8(_174)
        mem[_377 + 96] = _342
        mem[_377 + 128] = _358
        mem[_377 + 160] = 0
        return memory
          from mem[64]
           len _377 + ceil32(_5) + ceil32(_184) + -mem[64] + 256
    _370 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _378 = mem[_370]
    require mem[_370] == mem[_370 + 12 len 20]
    _390 = mem[64]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = _5
    mem[mem[64] + 224 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 224] = 0
    mem[mem[64] + 32] = ceil32(_5) + 224
    mem[mem[64] + ceil32(_5) + 224] = _184
    mem[mem[64] + ceil32(_5) + 256 len ceil32(_184)] = mem[_180 + ceil32(return_data.size) + 32 len ceil32(_184)]
    if ceil32(_184) <= _184:
        mem[mem[64] + 64] = uint8(_174)
        mem[mem[64] + 96] = _342
        return Array(len=_5, data=mem[mem[64] + 224 len ceil32(_5) + ceil32(_184) + 32]), 
               ceil32(_5) + 224,
               _174 << 248,
               _342,
               _358,
               address(_378)
    mem[mem[64] + ceil32(_5) + _184 + 256] = 0
    mem[mem[64] + 64] = uint8(_174)
    mem[_390 + 96] = _342
    mem[_390 + 128] = _358
    mem[_390 + 160] = address(_378)
    return memory
      from mem[64]
       len _390 + ceil32(_5) + ceil32(_184) + -mem[64] + 256
}

function sub_fe444f0f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 10
    mem[64] = 544
    mem[448] = 96
    mem[480] = 0
    mem[512] = 0
    mem[var21001] = 448
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[448] = 96
        mem[480] = 0
        mem[512] = 0
        mem[s + 32] = 448
        s = s + 32
        idx = idx - 1
        continue 
    if var106002 < sub_150d0aa9.length:
        if var112001 >= sub_150d0aa9.length:
            revert with 'NH{q', 50
        mem[0] = 3
        s = var116001
        t = var116006
        u = var116007
        u = var116008
        v = var116009
        v = var116011
        while sub_150d0aa9.length:
            if stor2[address(s)] >= sub_150d0aa9.length:
                revert with 'NH{q', 50
            if sub_150d0aa9[stor2[address(s)]].field_0 != address(s):
                revert with 0, 'Can't get a widget that doesn't exist.'
            mem[0] = address(s)
            mem[32] = 5
            if stor5[address(s)].field_0:
                if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                    revert with 'NH{q', 34
                _4540 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(s)].field_1) + 32
                mem[_4540] = stor5[address(s)].field_1
                if stor5[address(s)].field_0:
                    if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                        revert with 'NH{q', 34
                    if not stor5[address(s)].field_1:
                        if t >= sub_150d0aa9.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if not address(arg1):
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if t + 1 < sub_150d0aa9.length:
                                mem[0] = 3
                                s = sub_150d0aa9[t].field_256
                                t = t + 1
                                u = sub_150d0aa9[t].field_0
                                u = u
                                v = _4540
                                v = v
                                continue 
                            _4584 = mem[64]
                            mem[mem[64]] = 32
                            _4606 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + (32 * mem[96]) + 64
                            u = mem[64] + 64
                            while idx < _4606:
                                mem[u] = t + -_4584 - 64
                                _5208 = mem[s]
                                _5241 = mem[mem[s]]
                                mem[t] = 96
                                _5304 = mem[_5241]
                                mem[t + 96] = mem[_5241]
                                v = 0
                                while v < _5304:
                                    mem[t + v + 128] = mem[_5241 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_5304) > _5304:
                                    mem[t + _5304 + 128] = 0
                                mem[t + 32] = mem[_5208 + 44 len 20]
                                mem[t + 64] = mem[_5208 + 64]
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_5304) + 128
                                u = u + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_150d0aa9[t].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4573 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4585 = mem[_4573]
                            require mem[_4573] == mem[_4573]
                            if v >= 10:
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = _4585
                                    v = _4540
                                    v = v
                                    continue 
                                _4719 = mem[64]
                                mem[mem[64]] = 32
                                _4735 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4735:
                                    mem[u] = t + -_4719 - 64
                                    _5209 = mem[s]
                                    _5243 = mem[mem[s]]
                                    mem[t] = 96
                                    _5305 = mem[_5243]
                                    mem[t + 96] = mem[_5243]
                                    v = 0
                                    while v < _5305:
                                        mem[t + v + 128] = mem[_5243 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5305) > _5305:
                                        mem[t + _5305 + 128] = 0
                                    mem[t + 32] = mem[_5209 + 44 len 20]
                                    mem[t + 64] = mem[_5209 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5305) + 128
                                    u = u + 32
                                    continue 
                            else:
                                if mem[_4573] <= 0:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4585
                                        v = _4540
                                        v = v
                                        continue 
                                    _4722 = mem[64]
                                    mem[mem[64]] = 32
                                    _4746 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4746:
                                        mem[u] = t + -_4722 - 64
                                        _5210 = mem[s]
                                        _5245 = mem[mem[s]]
                                        mem[t] = 96
                                        _5306 = mem[_5245]
                                        mem[t + 96] = mem[_5245]
                                        v = 0
                                        while v < _5306:
                                            mem[t + v + 128] = mem[_5245 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5306) > _5306:
                                            mem[t + _5306 + 128] = 0
                                        mem[t + 32] = mem[_5210 + 44 len 20]
                                        mem[t + 64] = mem[_5210 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5306) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    _4645 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4645] = _4540
                                    mem[_4645 + 32] = sub_150d0aa9[t].field_0
                                    mem[_4645 + 64] = _4585
                                    if v >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * v) + 128] = _4645
                                    if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4585
                                        v = _4540
                                        v = v + 1
                                        continue 
                                    _4804 = mem[64]
                                    mem[mem[64]] = 32
                                    _4836 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4836:
                                        mem[u] = t + -_4804 - 64
                                        _5211 = mem[s]
                                        _5247 = mem[mem[s]]
                                        mem[t] = 96
                                        _5307 = mem[_5247]
                                        mem[t + 96] = mem[_5247]
                                        v = 0
                                        while v < _5307:
                                            mem[t + v + 128] = mem[_5247 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5307) > _5307:
                                            mem[t + _5307 + 128] = 0
                                        mem[t + 32] = mem[_5211 + 44 len 20]
                                        mem[t + 64] = mem[_5211 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5307) + 128
                                        u = u + 32
                                        continue 
                    else:
                        if 31 >= stor5[address(s)].field_1:
                            mem[_4540 + 32] = 256 * stor5[address(s)].field_8
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4540
                                    v = v
                                    continue 
                                _4599 = mem[64]
                                mem[mem[64]] = 32
                                _4622 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4622:
                                    mem[u] = t + -_4599 - 64
                                    _5212 = mem[s]
                                    _5249 = mem[mem[s]]
                                    mem[t] = 96
                                    _5308 = mem[_5249]
                                    mem[t + 96] = mem[_5249]
                                    v = 0
                                    while v < _5308:
                                        mem[t + v + 128] = mem[_5249 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5308) > _5308:
                                        mem[t + _5308 + 128] = 0
                                    mem[t + 32] = mem[_5212 + 44 len 20]
                                    mem[t + 64] = mem[_5212 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5308) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4580 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4600 = mem[_4580]
                                require mem[_4580] == mem[_4580]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4600
                                        v = _4540
                                        v = v
                                        continue 
                                    _4729 = mem[64]
                                    mem[mem[64]] = 32
                                    _4762 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4762:
                                        mem[u] = t + -_4729 - 64
                                        _5213 = mem[s]
                                        _5251 = mem[mem[s]]
                                        mem[t] = 96
                                        _5309 = mem[_5251]
                                        mem[t + 96] = mem[_5251]
                                        v = 0
                                        while v < _5309:
                                            mem[t + v + 128] = mem[_5251 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5309) > _5309:
                                            mem[t + _5309 + 128] = 0
                                        mem[t + 32] = mem[_5213 + 44 len 20]
                                        mem[t + 64] = mem[_5213 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5309) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_4580] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4600
                                            v = _4540
                                            v = v
                                            continue 
                                        _4737 = mem[64]
                                        mem[mem[64]] = 32
                                        _4778 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4778:
                                            mem[u] = t + -_4737 - 64
                                            _5214 = mem[s]
                                            _5253 = mem[mem[s]]
                                            mem[t] = 96
                                            _5310 = mem[_5253]
                                            mem[t + 96] = mem[_5253]
                                            v = 0
                                            while v < _5310:
                                                mem[t + v + 128] = mem[_5253 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5310) > _5310:
                                                mem[t + _5310 + 128] = 0
                                            mem[t + 32] = mem[_5214 + 44 len 20]
                                            mem[t + 64] = mem[_5214 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5310) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _4656 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4656] = _4540
                                        mem[_4656 + 32] = sub_150d0aa9[t].field_0
                                        mem[_4656 + 64] = _4600
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _4656
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4600
                                            v = _4540
                                            v = v + 1
                                            continue 
                                        _4829 = mem[64]
                                        mem[mem[64]] = 32
                                        _4867 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4867:
                                            mem[u] = t + -_4829 - 64
                                            _5215 = mem[s]
                                            _5255 = mem[mem[s]]
                                            mem[t] = 96
                                            _5311 = mem[_5255]
                                            mem[t + 96] = mem[_5255]
                                            v = 0
                                            while v < _5311:
                                                mem[t + v + 128] = mem[_5255 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5311) > _5311:
                                                mem[t + _5311 + 128] = 0
                                            mem[t + 32] = mem[_5215 + 44 len 20]
                                            mem[t + 64] = mem[_5215 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5311) + 128
                                            u = u + 32
                                            continue 
                        else:
                            mem[_4540 + 32] = stor5[address(s)].field_0
                            w = _4540 + 32
                            x = sha3(sha3(address(s), 5))
                            while _4540 + stor5[address(s)].field_1 > w:
                                mem[w + 32] = sub_25dbd379[x].field_0
                                w = w + 32
                                x = x + 1
                                continue 
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4540
                                    v = v
                                    continue 
                                _5448 = mem[64]
                                mem[mem[64]] = 32
                                _5524 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _5524:
                                    mem[u] = t + -_5448 - 64
                                    _5720 = mem[s]
                                    _5765 = mem[mem[s]]
                                    mem[t] = 96
                                    _5796 = mem[_5765]
                                    mem[t + 96] = mem[_5765]
                                    v = 0
                                    while v < _5796:
                                        mem[t + v + 128] = mem[_5765 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5796) > _5796:
                                        mem[t + _5796 + 128] = 0
                                    mem[t + 32] = mem[_5720 + 44 len 20]
                                    mem[t + 64] = mem[_5720 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5796) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5444 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5449 = mem[_5444]
                                require mem[_5444] == mem[_5444]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _5449
                                        v = _4540
                                        v = v
                                        continue 
                                    _5556 = mem[64]
                                    mem[mem[64]] = 32
                                    _5569 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _5569:
                                        mem[u] = t + -_5556 - 64
                                        _5721 = mem[s]
                                        _5767 = mem[mem[s]]
                                        mem[t] = 96
                                        _5797 = mem[_5767]
                                        mem[t + 96] = mem[_5767]
                                        v = 0
                                        while v < _5797:
                                            mem[t + v + 128] = mem[_5767 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5797) > _5797:
                                            mem[t + _5797 + 128] = 0
                                        mem[t + 32] = mem[_5721 + 44 len 20]
                                        mem[t + 64] = mem[_5721 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5797) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_5444] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5449
                                            v = _4540
                                            v = v
                                            continue 
                                        _5560 = mem[64]
                                        mem[mem[64]] = 32
                                        _5581 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5581:
                                            mem[u] = t + -_5560 - 64
                                            _5722 = mem[s]
                                            _5769 = mem[mem[s]]
                                            mem[t] = 96
                                            _5798 = mem[_5769]
                                            mem[t + 96] = mem[_5769]
                                            v = 0
                                            while v < _5798:
                                                mem[t + v + 128] = mem[_5769 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5798) > _5798:
                                                mem[t + _5798 + 128] = 0
                                            mem[t + 32] = mem[_5722 + 44 len 20]
                                            mem[t + 64] = mem[_5722 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5798) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _5529 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5529] = _4540
                                        mem[_5529 + 32] = sub_150d0aa9[t].field_0
                                        mem[_5529 + 64] = _5449
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _5529
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5449
                                            v = _4540
                                            v = v + 1
                                            continue 
                                        _5588 = mem[64]
                                        mem[mem[64]] = 32
                                        _5609 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5609:
                                            mem[u] = t + -_5588 - 64
                                            _5723 = mem[s]
                                            _5771 = mem[mem[s]]
                                            mem[t] = 96
                                            _5799 = mem[_5771]
                                            mem[t + 96] = mem[_5771]
                                            v = 0
                                            while v < _5799:
                                                mem[t + v + 128] = mem[_5771 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5799) > _5799:
                                                mem[t + _5799 + 128] = 0
                                            mem[t + 32] = mem[_5723 + 44 len 20]
                                            mem[t + 64] = mem[_5723 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5799) + 128
                                            u = u + 32
                                            continue 
                else:
                    if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                        revert with 'NH{q', 34
                    if not stor5[address(s)].field_1:
                        if t >= sub_150d0aa9.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if not address(arg1):
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if t + 1 < sub_150d0aa9.length:
                                mem[0] = 3
                                s = sub_150d0aa9[t].field_256
                                t = t + 1
                                u = sub_150d0aa9[t].field_0
                                u = u
                                v = _4540
                                v = v
                                continue 
                            _4591 = mem[64]
                            mem[mem[64]] = 32
                            _4617 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + (32 * mem[96]) + 64
                            u = mem[64] + 64
                            while idx < _4617:
                                mem[u] = t + -_4591 - 64
                                _5216 = mem[s]
                                _5257 = mem[mem[s]]
                                mem[t] = 96
                                _5312 = mem[_5257]
                                mem[t + 96] = mem[_5257]
                                v = 0
                                while v < _5312:
                                    mem[t + v + 128] = mem[_5257 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_5312) > _5312:
                                    mem[t + _5312 + 128] = 0
                                mem[t + 32] = mem[_5216 + 44 len 20]
                                mem[t + 64] = mem[_5216 + 64]
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_5312) + 128
                                u = u + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_150d0aa9[t].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4592 = mem[_4577]
                            require mem[_4577] == mem[_4577]
                            if v >= 10:
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = _4592
                                    v = _4540
                                    v = v
                                    continue 
                                _4723 = mem[64]
                                mem[mem[64]] = 32
                                _4750 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4750:
                                    mem[u] = t + -_4723 - 64
                                    _5217 = mem[s]
                                    _5259 = mem[mem[s]]
                                    mem[t] = 96
                                    _5313 = mem[_5259]
                                    mem[t + 96] = mem[_5259]
                                    v = 0
                                    while v < _5313:
                                        mem[t + v + 128] = mem[_5259 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5313) > _5313:
                                        mem[t + _5313 + 128] = 0
                                    mem[t + 32] = mem[_5217 + 44 len 20]
                                    mem[t + 64] = mem[_5217 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5313) + 128
                                    u = u + 32
                                    continue 
                            else:
                                if mem[_4577] <= 0:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4592
                                        v = _4540
                                        v = v
                                        continue 
                                    _4730 = mem[64]
                                    mem[mem[64]] = 32
                                    _4765 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4765:
                                        mem[u] = t + -_4730 - 64
                                        _5218 = mem[s]
                                        _5261 = mem[mem[s]]
                                        mem[t] = 96
                                        _5314 = mem[_5261]
                                        mem[t + 96] = mem[_5261]
                                        v = 0
                                        while v < _5314:
                                            mem[t + v + 128] = mem[_5261 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5314) > _5314:
                                            mem[t + _5314 + 128] = 0
                                        mem[t + 32] = mem[_5218 + 44 len 20]
                                        mem[t + 64] = mem[_5218 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5314) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    _4648 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4648] = _4540
                                    mem[_4648 + 32] = sub_150d0aa9[t].field_0
                                    mem[_4648 + 64] = _4592
                                    if v >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * v) + 128] = _4648
                                    if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4592
                                        v = _4540
                                        v = v + 1
                                        continue 
                                    _4817 = mem[64]
                                    mem[mem[64]] = 32
                                    _4854 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4854:
                                        mem[u] = t + -_4817 - 64
                                        _5219 = mem[s]
                                        _5263 = mem[mem[s]]
                                        mem[t] = 96
                                        _5315 = mem[_5263]
                                        mem[t + 96] = mem[_5263]
                                        v = 0
                                        while v < _5315:
                                            mem[t + v + 128] = mem[_5263 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5315) > _5315:
                                            mem[t + _5315 + 128] = 0
                                        mem[t + 32] = mem[_5219 + 44 len 20]
                                        mem[t + 64] = mem[_5219 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5315) + 128
                                        u = u + 32
                                        continue 
                    else:
                        if 31 >= stor5[address(s)].field_1:
                            mem[_4540 + 32] = 256 * stor5[address(s)].field_8
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4540
                                    v = v
                                    continue 
                                _4608 = mem[64]
                                mem[mem[64]] = 32
                                _4631 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4631:
                                    mem[u] = t + -_4608 - 64
                                    _5220 = mem[s]
                                    _5265 = mem[mem[s]]
                                    mem[t] = 96
                                    _5316 = mem[_5265]
                                    mem[t + 96] = mem[_5265]
                                    v = 0
                                    while v < _5316:
                                        mem[t + v + 128] = mem[_5265 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5316) > _5316:
                                        mem[t + _5316 + 128] = 0
                                    mem[t + 32] = mem[_5220 + 44 len 20]
                                    mem[t + 64] = mem[_5220 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5316) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4609 = mem[_4587]
                                require mem[_4587] == mem[_4587]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4609
                                        v = _4540
                                        v = v
                                        continue 
                                    _4740 = mem[64]
                                    mem[mem[64]] = 32
                                    _4781 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4781:
                                        mem[u] = t + -_4740 - 64
                                        _5221 = mem[s]
                                        _5267 = mem[mem[s]]
                                        mem[t] = 96
                                        _5317 = mem[_5267]
                                        mem[t + 96] = mem[_5267]
                                        v = 0
                                        while v < _5317:
                                            mem[t + v + 128] = mem[_5267 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5317) > _5317:
                                            mem[t + _5317 + 128] = 0
                                        mem[t + 32] = mem[_5221 + 44 len 20]
                                        mem[t + 64] = mem[_5221 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5317) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_4587] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4609
                                            v = _4540
                                            v = v
                                            continue 
                                        _4752 = mem[64]
                                        mem[mem[64]] = 32
                                        _4796 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4796:
                                            mem[u] = t + -_4752 - 64
                                            _5222 = mem[s]
                                            _5269 = mem[mem[s]]
                                            mem[t] = 96
                                            _5318 = mem[_5269]
                                            mem[t + 96] = mem[_5269]
                                            v = 0
                                            while v < _5318:
                                                mem[t + v + 128] = mem[_5269 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5318) > _5318:
                                                mem[t + _5318 + 128] = 0
                                            mem[t + 32] = mem[_5222 + 44 len 20]
                                            mem[t + 64] = mem[_5222 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5318) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _4664 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4664] = _4540
                                        mem[_4664 + 32] = sub_150d0aa9[t].field_0
                                        mem[_4664 + 64] = _4609
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _4664
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4609
                                            v = _4540
                                            v = v + 1
                                            continue 
                                        _4841 = mem[64]
                                        mem[mem[64]] = 32
                                        _4893 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4893:
                                            mem[u] = t + -_4841 - 64
                                            _5223 = mem[s]
                                            _5271 = mem[mem[s]]
                                            mem[t] = 96
                                            _5319 = mem[_5271]
                                            mem[t + 96] = mem[_5271]
                                            v = 0
                                            while v < _5319:
                                                mem[t + v + 128] = mem[_5271 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5319) > _5319:
                                                mem[t + _5319 + 128] = 0
                                            mem[t + 32] = mem[_5223 + 44 len 20]
                                            mem[t + 64] = mem[_5223 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5319) + 128
                                            u = u + 32
                                            continue 
                        else:
                            mem[_4540 + 32] = stor5[address(s)].field_0
                            w = _4540 + 32
                            x = sha3(sha3(address(s), 5))
                            while _4540 + stor5[address(s)].field_1 > w:
                                mem[w + 32] = sub_25dbd379[x].field_0
                                w = w + 32
                                x = x + 1
                                continue 
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4540
                                    v = v
                                    continue 
                                _5450 = mem[64]
                                mem[mem[64]] = 32
                                _5525 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _5525:
                                    mem[u] = t + -_5450 - 64
                                    _5732 = mem[s]
                                    _5773 = mem[mem[s]]
                                    mem[t] = 96
                                    _5800 = mem[_5773]
                                    mem[t + 96] = mem[_5773]
                                    v = 0
                                    while v < _5800:
                                        mem[t + v + 128] = mem[_5773 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5800) > _5800:
                                        mem[t + _5800 + 128] = 0
                                    mem[t + 32] = mem[_5732 + 44 len 20]
                                    mem[t + 64] = mem[_5732 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5800) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5451 = mem[_5445]
                                require mem[_5445] == mem[_5445]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _5451
                                        v = _4540
                                        v = v
                                        continue 
                                    _5557 = mem[64]
                                    mem[mem[64]] = 32
                                    _5572 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _5572:
                                        mem[u] = t + -_5557 - 64
                                        _5733 = mem[s]
                                        _5775 = mem[mem[s]]
                                        mem[t] = 96
                                        _5801 = mem[_5775]
                                        mem[t + 96] = mem[_5775]
                                        v = 0
                                        while v < _5801:
                                            mem[t + v + 128] = mem[_5775 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5801) > _5801:
                                            mem[t + _5801 + 128] = 0
                                        mem[t + 32] = mem[_5733 + 44 len 20]
                                        mem[t + 64] = mem[_5733 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5801) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_5445] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5451
                                            v = _4540
                                            v = v
                                            continue 
                                        _5561 = mem[64]
                                        mem[mem[64]] = 32
                                        _5583 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5583:
                                            mem[u] = t + -_5561 - 64
                                            _5734 = mem[s]
                                            _5777 = mem[mem[s]]
                                            mem[t] = 96
                                            _5802 = mem[_5777]
                                            mem[t + 96] = mem[_5777]
                                            v = 0
                                            while v < _5802:
                                                mem[t + v + 128] = mem[_5777 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5802) > _5802:
                                                mem[t + _5802 + 128] = 0
                                            mem[t + 32] = mem[_5734 + 44 len 20]
                                            mem[t + 64] = mem[_5734 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5802) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _5532 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5532] = _4540
                                        mem[_5532 + 32] = sub_150d0aa9[t].field_0
                                        mem[_5532 + 64] = _5451
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _5532
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5451
                                            v = _4540
                                            v = v + 1
                                            continue 
                                        _5589 = mem[64]
                                        mem[mem[64]] = 32
                                        _5611 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5611:
                                            mem[u] = t + -_5589 - 64
                                            _5735 = mem[s]
                                            _5779 = mem[mem[s]]
                                            mem[t] = 96
                                            _5803 = mem[_5779]
                                            mem[t + 96] = mem[_5779]
                                            v = 0
                                            while v < _5803:
                                                mem[t + v + 128] = mem[_5779 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5803) > _5803:
                                                mem[t + _5803 + 128] = 0
                                            mem[t + 32] = mem[_5735 + 44 len 20]
                                            mem[t + 64] = mem[_5735 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5803) + 128
                                            u = u + 32
                                            continue 
            else:
                if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                    revert with 'NH{q', 34
                _4541 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(s)].field_1) + 32
                mem[_4541] = stor5[address(s)].field_1
                if stor5[address(s)].field_0:
                    if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                        revert with 'NH{q', 34
                    if not stor5[address(s)].field_1:
                        if t >= sub_150d0aa9.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if not address(arg1):
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if t + 1 < sub_150d0aa9.length:
                                mem[0] = 3
                                s = sub_150d0aa9[t].field_256
                                t = t + 1
                                u = sub_150d0aa9[t].field_0
                                u = u
                                v = _4541
                                v = v
                                continue 
                            _4594 = mem[64]
                            mem[mem[64]] = 32
                            _4618 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + (32 * mem[96]) + 64
                            u = mem[64] + 64
                            while idx < _4618:
                                mem[u] = t + -_4594 - 64
                                _5224 = mem[s]
                                _5273 = mem[mem[s]]
                                mem[t] = 96
                                _5320 = mem[_5273]
                                mem[t + 96] = mem[_5273]
                                v = 0
                                while v < _5320:
                                    mem[t + v + 128] = mem[_5273 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_5320) > _5320:
                                    mem[t + _5320 + 128] = 0
                                mem[t + 32] = mem[_5224 + 44 len 20]
                                mem[t + 64] = mem[_5224 + 64]
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_5320) + 128
                                u = u + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_150d0aa9[t].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4595 = mem[_4578]
                            require mem[_4578] == mem[_4578]
                            if v >= 10:
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = _4595
                                    v = _4541
                                    v = v
                                    continue 
                                _4725 = mem[64]
                                mem[mem[64]] = 32
                                _4754 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4754:
                                    mem[u] = t + -_4725 - 64
                                    _5225 = mem[s]
                                    _5275 = mem[mem[s]]
                                    mem[t] = 96
                                    _5321 = mem[_5275]
                                    mem[t + 96] = mem[_5275]
                                    v = 0
                                    while v < _5321:
                                        mem[t + v + 128] = mem[_5275 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5321) > _5321:
                                        mem[t + _5321 + 128] = 0
                                    mem[t + 32] = mem[_5225 + 44 len 20]
                                    mem[t + 64] = mem[_5225 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5321) + 128
                                    u = u + 32
                                    continue 
                            else:
                                if mem[_4578] <= 0:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4595
                                        v = _4541
                                        v = v
                                        continue 
                                    _4731 = mem[64]
                                    mem[mem[64]] = 32
                                    _4769 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4769:
                                        mem[u] = t + -_4731 - 64
                                        _5226 = mem[s]
                                        _5277 = mem[mem[s]]
                                        mem[t] = 96
                                        _5322 = mem[_5277]
                                        mem[t + 96] = mem[_5277]
                                        v = 0
                                        while v < _5322:
                                            mem[t + v + 128] = mem[_5277 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5322) > _5322:
                                            mem[t + _5322 + 128] = 0
                                        mem[t + 32] = mem[_5226 + 44 len 20]
                                        mem[t + 64] = mem[_5226 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5322) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    _4651 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4651] = _4541
                                    mem[_4651 + 32] = sub_150d0aa9[t].field_0
                                    mem[_4651 + 64] = _4595
                                    if v >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * v) + 128] = _4651
                                    if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4595
                                        v = _4541
                                        v = v + 1
                                        continue 
                                    _4820 = mem[64]
                                    mem[mem[64]] = 32
                                    _4857 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4857:
                                        mem[u] = t + -_4820 - 64
                                        _5227 = mem[s]
                                        _5279 = mem[mem[s]]
                                        mem[t] = 96
                                        _5323 = mem[_5279]
                                        mem[t + 96] = mem[_5279]
                                        v = 0
                                        while v < _5323:
                                            mem[t + v + 128] = mem[_5279 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5323) > _5323:
                                            mem[t + _5323 + 128] = 0
                                        mem[t + 32] = mem[_5227 + 44 len 20]
                                        mem[t + 64] = mem[_5227 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5323) + 128
                                        u = u + 32
                                        continue 
                    else:
                        if 31 >= stor5[address(s)].field_1:
                            mem[_4541 + 32] = 256 * stor5[address(s)].field_8
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4541
                                    v = v
                                    continue 
                                _4611 = mem[64]
                                mem[mem[64]] = 32
                                _4632 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4632:
                                    mem[u] = t + -_4611 - 64
                                    _5228 = mem[s]
                                    _5281 = mem[mem[s]]
                                    mem[t] = 96
                                    _5324 = mem[_5281]
                                    mem[t + 96] = mem[_5281]
                                    v = 0
                                    while v < _5324:
                                        mem[t + v + 128] = mem[_5281 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5324) > _5324:
                                        mem[t + _5324 + 128] = 0
                                    mem[t + 32] = mem[_5228 + 44 len 20]
                                    mem[t + 64] = mem[_5228 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5324) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4612 = mem[_4588]
                                require mem[_4588] == mem[_4588]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4612
                                        v = _4541
                                        v = v
                                        continue 
                                    _4743 = mem[64]
                                    mem[mem[64]] = 32
                                    _4785 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4785:
                                        mem[u] = t + -_4743 - 64
                                        _5229 = mem[s]
                                        _5283 = mem[mem[s]]
                                        mem[t] = 96
                                        _5325 = mem[_5283]
                                        mem[t + 96] = mem[_5283]
                                        v = 0
                                        while v < _5325:
                                            mem[t + v + 128] = mem[_5283 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5325) > _5325:
                                            mem[t + _5325 + 128] = 0
                                        mem[t + 32] = mem[_5229 + 44 len 20]
                                        mem[t + 64] = mem[_5229 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5325) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_4588] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4612
                                            v = _4541
                                            v = v
                                            continue 
                                        _4756 = mem[64]
                                        mem[mem[64]] = 32
                                        _4799 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4799:
                                            mem[u] = t + -_4756 - 64
                                            _5230 = mem[s]
                                            _5285 = mem[mem[s]]
                                            mem[t] = 96
                                            _5326 = mem[_5285]
                                            mem[t + 96] = mem[_5285]
                                            v = 0
                                            while v < _5326:
                                                mem[t + v + 128] = mem[_5285 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5326) > _5326:
                                                mem[t + _5326 + 128] = 0
                                            mem[t + 32] = mem[_5230 + 44 len 20]
                                            mem[t + 64] = mem[_5230 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5326) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _4669 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4669] = _4541
                                        mem[_4669 + 32] = sub_150d0aa9[t].field_0
                                        mem[_4669 + 64] = _4612
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _4669
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4612
                                            v = _4541
                                            v = v + 1
                                            continue 
                                        _4845 = mem[64]
                                        mem[mem[64]] = 32
                                        _4898 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4898:
                                            mem[u] = t + -_4845 - 64
                                            _5231 = mem[s]
                                            _5287 = mem[mem[s]]
                                            mem[t] = 96
                                            _5327 = mem[_5287]
                                            mem[t + 96] = mem[_5287]
                                            v = 0
                                            while v < _5327:
                                                mem[t + v + 128] = mem[_5287 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5327) > _5327:
                                                mem[t + _5327 + 128] = 0
                                            mem[t + 32] = mem[_5231 + 44 len 20]
                                            mem[t + 64] = mem[_5231 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5327) + 128
                                            u = u + 32
                                            continue 
                        else:
                            mem[_4541 + 32] = stor5[address(s)].field_0
                            w = _4541 + 32
                            x = sha3(sha3(address(s), 5))
                            while _4541 + stor5[address(s)].field_1 > w:
                                mem[w + 32] = sub_25dbd379[x].field_0
                                w = w + 32
                                x = x + 1
                                continue 
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4541
                                    v = v
                                    continue 
                                _5452 = mem[64]
                                mem[mem[64]] = 32
                                _5526 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _5526:
                                    mem[u] = t + -_5452 - 64
                                    _5744 = mem[s]
                                    _5781 = mem[mem[s]]
                                    mem[t] = 96
                                    _5804 = mem[_5781]
                                    mem[t + 96] = mem[_5781]
                                    v = 0
                                    while v < _5804:
                                        mem[t + v + 128] = mem[_5781 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5804) > _5804:
                                        mem[t + _5804 + 128] = 0
                                    mem[t + 32] = mem[_5744 + 44 len 20]
                                    mem[t + 64] = mem[_5744 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5804) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5446 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5453 = mem[_5446]
                                require mem[_5446] == mem[_5446]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _5453
                                        v = _4541
                                        v = v
                                        continue 
                                    _5558 = mem[64]
                                    mem[mem[64]] = 32
                                    _5575 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _5575:
                                        mem[u] = t + -_5558 - 64
                                        _5745 = mem[s]
                                        _5783 = mem[mem[s]]
                                        mem[t] = 96
                                        _5805 = mem[_5783]
                                        mem[t + 96] = mem[_5783]
                                        v = 0
                                        while v < _5805:
                                            mem[t + v + 128] = mem[_5783 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5805) > _5805:
                                            mem[t + _5805 + 128] = 0
                                        mem[t + 32] = mem[_5745 + 44 len 20]
                                        mem[t + 64] = mem[_5745 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5805) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_5446] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5453
                                            v = _4541
                                            v = v
                                            continue 
                                        _5562 = mem[64]
                                        mem[mem[64]] = 32
                                        _5585 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5585:
                                            mem[u] = t + -_5562 - 64
                                            _5746 = mem[s]
                                            _5785 = mem[mem[s]]
                                            mem[t] = 96
                                            _5806 = mem[_5785]
                                            mem[t + 96] = mem[_5785]
                                            v = 0
                                            while v < _5806:
                                                mem[t + v + 128] = mem[_5785 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5806) > _5806:
                                                mem[t + _5806 + 128] = 0
                                            mem[t + 32] = mem[_5746 + 44 len 20]
                                            mem[t + 64] = mem[_5746 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5806) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _5535 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5535] = _4541
                                        mem[_5535 + 32] = sub_150d0aa9[t].field_0
                                        mem[_5535 + 64] = _5453
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _5535
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5453
                                            v = _4541
                                            v = v + 1
                                            continue 
                                        _5590 = mem[64]
                                        mem[mem[64]] = 32
                                        _5613 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5613:
                                            mem[u] = t + -_5590 - 64
                                            _5747 = mem[s]
                                            _5787 = mem[mem[s]]
                                            mem[t] = 96
                                            _5807 = mem[_5787]
                                            mem[t + 96] = mem[_5787]
                                            v = 0
                                            while v < _5807:
                                                mem[t + v + 128] = mem[_5787 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5807) > _5807:
                                                mem[t + _5807 + 128] = 0
                                            mem[t + 32] = mem[_5747 + 44 len 20]
                                            mem[t + 64] = mem[_5747 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5807) + 128
                                            u = u + 32
                                            continue 
                else:
                    if not stor5[address(s)].field_0 - (stor5[address(s)].field_1 < 32):
                        revert with 'NH{q', 34
                    if not stor5[address(s)].field_1:
                        if t >= sub_150d0aa9.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if not address(arg1):
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if t + 1 < sub_150d0aa9.length:
                                mem[0] = 3
                                s = sub_150d0aa9[t].field_256
                                t = t + 1
                                u = sub_150d0aa9[t].field_0
                                u = u
                                v = _4541
                                v = v
                                continue 
                            _4603 = mem[64]
                            mem[mem[64]] = 32
                            _4629 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + (32 * mem[96]) + 64
                            u = mem[64] + 64
                            while idx < _4629:
                                mem[u] = t + -_4603 - 64
                                _5232 = mem[s]
                                _5289 = mem[mem[s]]
                                mem[t] = 96
                                _5328 = mem[_5289]
                                mem[t + 96] = mem[_5289]
                                v = 0
                                while v < _5328:
                                    mem[t + v + 128] = mem[_5289 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_5328) > _5328:
                                    mem[t + _5328 + 128] = 0
                                mem[t + 32] = mem[_5232 + 44 len 20]
                                mem[t + 64] = mem[_5232 + 64]
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(_5328) + 128
                                u = u + 32
                                continue 
                        else:
                            mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_150d0aa9[t].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4604 = mem[_4583]
                            require mem[_4583] == mem[_4583]
                            if v >= 10:
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = _4604
                                    v = _4541
                                    v = v
                                    continue 
                                _4732 = mem[64]
                                mem[mem[64]] = 32
                                _4773 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4773:
                                    mem[u] = t + -_4732 - 64
                                    _5233 = mem[s]
                                    _5291 = mem[mem[s]]
                                    mem[t] = 96
                                    _5329 = mem[_5291]
                                    mem[t + 96] = mem[_5291]
                                    v = 0
                                    while v < _5329:
                                        mem[t + v + 128] = mem[_5291 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5329) > _5329:
                                        mem[t + _5329 + 128] = 0
                                    mem[t + 32] = mem[_5233 + 44 len 20]
                                    mem[t + 64] = mem[_5233 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5329) + 128
                                    u = u + 32
                                    continue 
                            else:
                                if mem[_4583] <= 0:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4604
                                        v = _4541
                                        v = v
                                        continue 
                                    _4744 = mem[64]
                                    mem[mem[64]] = 32
                                    _4788 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4788:
                                        mem[u] = t + -_4744 - 64
                                        _5234 = mem[s]
                                        _5293 = mem[mem[s]]
                                        mem[t] = 96
                                        _5330 = mem[_5293]
                                        mem[t + 96] = mem[_5293]
                                        v = 0
                                        while v < _5330:
                                            mem[t + v + 128] = mem[_5293 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5330) > _5330:
                                            mem[t + _5330 + 128] = 0
                                        mem[t + 32] = mem[_5234 + 44 len 20]
                                        mem[t + 64] = mem[_5234 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5330) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    _4659 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4659] = _4541
                                    mem[_4659 + 32] = sub_150d0aa9[t].field_0
                                    mem[_4659 + 64] = _4604
                                    if v >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * v) + 128] = _4659
                                    if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4604
                                        v = _4541
                                        v = v + 1
                                        continue 
                                    _4832 = mem[64]
                                    mem[mem[64]] = 32
                                    _4881 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4881:
                                        mem[u] = t + -_4832 - 64
                                        _5235 = mem[s]
                                        _5295 = mem[mem[s]]
                                        mem[t] = 96
                                        _5331 = mem[_5295]
                                        mem[t + 96] = mem[_5295]
                                        v = 0
                                        while v < _5331:
                                            mem[t + v + 128] = mem[_5295 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5331) > _5331:
                                            mem[t + _5331 + 128] = 0
                                        mem[t + 32] = mem[_5235 + 44 len 20]
                                        mem[t + 64] = mem[_5235 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5331) + 128
                                        u = u + 32
                                        continue 
                    else:
                        if 31 >= stor5[address(s)].field_1:
                            mem[_4541 + 32] = 256 * stor5[address(s)].field_8
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4541
                                    v = v
                                    continue 
                                _4620 = mem[64]
                                mem[mem[64]] = 32
                                _4639 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _4639:
                                    mem[u] = t + -_4620 - 64
                                    _5236 = mem[s]
                                    _5297 = mem[mem[s]]
                                    mem[t] = 96
                                    _5332 = mem[_5297]
                                    mem[t + 96] = mem[_5297]
                                    v = 0
                                    while v < _5332:
                                        mem[t + v + 128] = mem[_5297 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5332) > _5332:
                                        mem[t + _5332 + 128] = 0
                                    mem[t + 32] = mem[_5236 + 44 len 20]
                                    mem[t + 64] = mem[_5236 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5332) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4621 = mem[_4597]
                                require mem[_4597] == mem[_4597]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _4621
                                        v = _4541
                                        v = v
                                        continue 
                                    _4759 = mem[64]
                                    mem[mem[64]] = 32
                                    _4802 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _4802:
                                        mem[u] = t + -_4759 - 64
                                        _5237 = mem[s]
                                        _5299 = mem[mem[s]]
                                        mem[t] = 96
                                        _5333 = mem[_5299]
                                        mem[t + 96] = mem[_5299]
                                        v = 0
                                        while v < _5333:
                                            mem[t + v + 128] = mem[_5299 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5333) > _5333:
                                            mem[t + _5333 + 128] = 0
                                        mem[t + 32] = mem[_5237 + 44 len 20]
                                        mem[t + 64] = mem[_5237 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5333) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_4597] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4621
                                            v = _4541
                                            v = v
                                            continue 
                                        _4775 = mem[64]
                                        mem[mem[64]] = 32
                                        _4815 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4815:
                                            mem[u] = t + -_4775 - 64
                                            _5238 = mem[s]
                                            _5301 = mem[mem[s]]
                                            mem[t] = 96
                                            _5334 = mem[_5301]
                                            mem[t + 96] = mem[_5301]
                                            v = 0
                                            while v < _5334:
                                                mem[t + v + 128] = mem[_5301 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5334) > _5334:
                                                mem[t + _5334 + 128] = 0
                                            mem[t + 32] = mem[_5238 + 44 len 20]
                                            mem[t + 64] = mem[_5238 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5334) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _4680 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4680] = _4541
                                        mem[_4680 + 32] = sub_150d0aa9[t].field_0
                                        mem[_4680 + 64] = _4621
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _4680
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _4621
                                            v = _4541
                                            v = v + 1
                                            continue 
                                        _4862 = mem[64]
                                        mem[mem[64]] = 32
                                        _4926 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _4926:
                                            mem[u] = t + -_4862 - 64
                                            _5239 = mem[s]
                                            _5303 = mem[mem[s]]
                                            mem[t] = 96
                                            _5335 = mem[_5303]
                                            mem[t + 96] = mem[_5303]
                                            v = 0
                                            while v < _5335:
                                                mem[t + v + 128] = mem[_5303 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5335) > _5335:
                                                mem[t + _5335 + 128] = 0
                                            mem[t + 32] = mem[_5239 + 44 len 20]
                                            mem[t + 64] = mem[_5239 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5335) + 128
                                            u = u + 32
                                            continue 
                        else:
                            mem[_4541 + 32] = stor5[address(s)].field_0
                            w = _4541 + 32
                            x = sha3(sha3(address(s), 5))
                            while _4541 + stor5[address(s)].field_1 > w:
                                mem[w + 32] = sub_25dbd379[x].field_0
                                w = w + 32
                                x = x + 1
                                continue 
                            if t >= sub_150d0aa9.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if not address(arg1):
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if t + 1 < sub_150d0aa9.length:
                                    mem[0] = 3
                                    s = sub_150d0aa9[t].field_256
                                    t = t + 1
                                    u = sub_150d0aa9[t].field_0
                                    u = u
                                    v = _4541
                                    v = v
                                    continue 
                                _5454 = mem[64]
                                mem[mem[64]] = 32
                                _5527 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + (32 * mem[96]) + 64
                                u = mem[64] + 64
                                while idx < _5527:
                                    mem[u] = t + -_5454 - 64
                                    _5756 = mem[s]
                                    _5789 = mem[mem[s]]
                                    mem[t] = 96
                                    _5808 = mem[_5789]
                                    mem[t + 96] = mem[_5789]
                                    v = 0
                                    while v < _5808:
                                        mem[t + v + 128] = mem[_5789 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_5808) > _5808:
                                        mem[t + _5808 + 128] = 0
                                    mem[t + 32] = mem[_5756 + 44 len 20]
                                    mem[t + 64] = mem[_5756 + 64]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + ceil32(_5808) + 128
                                    u = u + 32
                                    continue 
                            else:
                                mem[mem[64] + 4] = sub_150d0aa9[t].field_0
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_150d0aa9[t].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5447 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5455 = mem[_5447]
                                require mem[_5447] == mem[_5447]
                                if v >= 10:
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if t + 1 < sub_150d0aa9.length:
                                        mem[0] = 3
                                        s = sub_150d0aa9[t].field_256
                                        t = t + 1
                                        u = sub_150d0aa9[t].field_0
                                        u = _5455
                                        v = _4541
                                        v = v
                                        continue 
                                    _5559 = mem[64]
                                    mem[mem[64]] = 32
                                    _5578 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    s = 128
                                    t = mem[64] + (32 * mem[96]) + 64
                                    u = mem[64] + 64
                                    while idx < _5578:
                                        mem[u] = t + -_5559 - 64
                                        _5757 = mem[s]
                                        _5791 = mem[mem[s]]
                                        mem[t] = 96
                                        _5809 = mem[_5791]
                                        mem[t + 96] = mem[_5791]
                                        v = 0
                                        while v < _5809:
                                            mem[t + v + 128] = mem[_5791 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_5809) > _5809:
                                            mem[t + _5809 + 128] = 0
                                        mem[t + 32] = mem[_5757 + 44 len 20]
                                        mem[t + 64] = mem[_5757 + 64]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + ceil32(_5809) + 128
                                        u = u + 32
                                        continue 
                                else:
                                    if mem[_5447] <= 0:
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5455
                                            v = _4541
                                            v = v
                                            continue 
                                        _5563 = mem[64]
                                        mem[mem[64]] = 32
                                        _5587 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5587:
                                            mem[u] = t + -_5563 - 64
                                            _5758 = mem[s]
                                            _5793 = mem[mem[s]]
                                            mem[t] = 96
                                            _5810 = mem[_5793]
                                            mem[t + 96] = mem[_5793]
                                            v = 0
                                            while v < _5810:
                                                mem[t + v + 128] = mem[_5793 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5810) > _5810:
                                                mem[t + _5810 + 128] = 0
                                            mem[t + 32] = mem[_5758 + 44 len 20]
                                            mem[t + 64] = mem[_5758 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5810) + 128
                                            u = u + 32
                                            continue 
                                    else:
                                        _5538 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5538] = _4541
                                        mem[_5538 + 32] = sub_150d0aa9[t].field_0
                                        mem[_5538 + 64] = _5455
                                        if v >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * v) + 128] = _5538
                                        if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if t + 1 < sub_150d0aa9.length:
                                            mem[0] = 3
                                            s = sub_150d0aa9[t].field_256
                                            t = t + 1
                                            u = sub_150d0aa9[t].field_0
                                            u = _5455
                                            v = _4541
                                            v = v + 1
                                            continue 
                                        _5591 = mem[64]
                                        mem[mem[64]] = 32
                                        _5615 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        idx = 0
                                        s = 128
                                        t = mem[64] + (32 * mem[96]) + 64
                                        u = mem[64] + 64
                                        while idx < _5615:
                                            mem[u] = t + -_5591 - 64
                                            _5759 = mem[s]
                                            _5795 = mem[mem[s]]
                                            mem[t] = 96
                                            _5811 = mem[_5795]
                                            mem[t + 96] = mem[_5795]
                                            v = 0
                                            while v < _5811:
                                                mem[t + v + 128] = mem[_5795 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_5811) > _5811:
                                                mem[t + _5811 + 128] = 0
                                            mem[t + 32] = mem[_5759 + 44 len 20]
                                            mem[t + 64] = mem[_5759 + 64]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + ceil32(_5811) + 128
                                            u = u + 32
                                            continue 
            return memory
              from mem[64]
               len t - mem[64]
        revert with 0, 'Can't get a widget that doesn't exist.'
    _659 = mem[64]
    mem[mem[64]] = 32
    _661 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _661:
        mem[u] = t + -_659 - 64
        _1296 = mem[s]
        _1298 = mem[mem[s]]
        mem[t] = 96
        _1300 = mem[_1298]
        mem[t + 96] = mem[_1298]
        v = 0
        while v < _1300:
            mem[t + v + 128] = mem[_1298 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1300) > _1300:
            mem[t + _1300 + 128] = 0
        mem[t + 32] = mem[_1296 + 44 len 20]
        mem[t + 64] = mem[_1296 + 64]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_1300) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
