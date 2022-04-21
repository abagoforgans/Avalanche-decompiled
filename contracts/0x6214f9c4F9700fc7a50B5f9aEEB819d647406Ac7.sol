contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function addAuth(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 1
    mem[160] = 11
    mem[192] = 'AUTHORITY-A'
    mem[128] = 160
    mem[224] = 1
    mem[324] = arg2
    mem[288] = 36
    mem[64] = 356
    mem[324 len 28] = address(arg2) << 64
    mem[320 len 4] = '
;
O'
    mem[256] = 288
    mem[392] = 96
    mem[488] = 1
    idx = 0
    s = 128
    t = (32 * mem[96]) + 520
    u = 520
    while idx < 1:
        mem[u] = t - 520
        _35 = mem[s]
        _37 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _37:
            mem[t + v + 32] = mem[_35 + v + 32]
            v = v + 32
            continue 
        if ceil32(_37) > _37:
            mem[t + _37 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_37) + 32
        u = u + 32
        continue 
    mem[424] = t - 392
    _36 = mem[224]
    mem[t] = mem[224]
    idx = 0
    s = 256
    u = t + (32 * _36) + 32
    v = t + 32
    while idx < _36:
        mem[v] = u + -t - 32
        _59 = mem[s]
        _61 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _61:
            mem[u + t + 32] = mem[_59 + t + 32]
            t = t + 32
            continue 
        if ceil32(_61) > _61:
            mem[u + _61 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_61) + 32
        v = v + 32
        continue 
    mem[456] = this.address
    _62 = mem[64]
    mem[mem[64]] = u + -mem[64] - 32
    mem[64] = u
    mem[_62 + 32 len 4] = cast(string[] rg1, bytes[] rg2, address rg3)
    _66 = mem[_62]
    mem[u len ceil32(mem[_62])] = mem[_62 + 32 len ceil32(mem[_62])]
    if ceil32(_66) > _66:
        mem[u + _66] = 0
    call arg1.mem[u len 4] with:
         gas gas_remaining wei
        args mem[u + 4 len _66 - 4]
    if not ext_call.success:
        revert with 0, 'auth-failed'
}



}
