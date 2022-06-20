contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function calculatePnL(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xd29dd3c6: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161]
}

function calculatePoolPnL(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xb69634c0: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161]
}



}
