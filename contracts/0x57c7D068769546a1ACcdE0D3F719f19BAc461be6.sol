contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2:
        revert with 0, 'FO: INVALID_AMOUNT'
    mem[224] = arg1
    mem[256] = arg1
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
    return 64, 160, 2, arg2, arg2 >> 256, 2, mem[480 len 64]
}



}
