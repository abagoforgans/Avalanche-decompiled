contract main {




// =====================  Runtime code  =====================


const sub_08a9cbb8(?) = 0x2d45990600000000000000000000000000000000000000000000000000000000

const sub_9d80217f(?) = 0x2d45990600000000000000000000000000000000000000000000000000000000


function _fallback() payable {
    revert
}

function sub_2d459906(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not arg3:
        revert with 0, 'FO: INVALID_AMOUNT'
    mem[224] = address(arg2)
    mem[256] = address(arg2)
    mem[288] = 64
    idx = 0
    s = 480
    t = 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 64, 160, 2, arg3, arg3 >> 256, 2, mem[480 len 64]
}



}
