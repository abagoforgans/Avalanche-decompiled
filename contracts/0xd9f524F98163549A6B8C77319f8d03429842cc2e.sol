contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_54b2011a(?) payable {
    require calldata.size - 4 >= 64
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * arg1 > test266151307():
        revert with 'NH{q', 65
    if uint255(arg1):
        mem[128 len 64 * arg1] = call.data[calldata.size len 64 * arg1]
    idx = 0
    while idx < arg1:
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * idx >= 2 * arg1:
            revert with 'NH{q', 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 1 > !(2 * idx):
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= 2 * arg1:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + 128] = 9999999
        mem[(64 * idx) + 128] = 9999999
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 64, 0, 2 * arg1, mem[128 len 64 * arg1]
}

function sub_6f200cbe(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if uint255(('cd', 4).length):
        mem[ceil32(32 * ('cd', 4).length) + 129 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * idx >= 2 * ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 1 > !(2 * idx):
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= 2 * ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + ceil32(32 * ('cd', 4).length) + 129] = 9999999
        mem[(64 * idx) + ceil32(32 * ('cd', 4).length) + 129] = 9999999
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 64, 0, 2 * ('cd', 4).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 64 * ('cd', 4).length]
}



}
